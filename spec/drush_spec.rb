require_relative 'spec_helper'

describe 'osl-drupal::drush' do
  ALL_PLATFORMS.each do |p|
    context "#{p[:platform]} #{p[:version]}" do
      cached(:chef_run) do
        ChefSpec::SoloRunner.new(p).converge(described_recipe)
      end
      it 'converges successfully' do
        expect { chef_run }.to_not raise_error
      end
      it 'should include recipes' do
        %w(php yum yum-epel).each do |r|
          expect(chef_run).to include_recipe(r)
        end
      end
      it do
        expect(chef_run).to create_yum_repository('drush').with(
          name: 'drush',
          url: chef_run.node['osl-drupal']['drush']['repo-url']
        )
      end
      it do
        expect(chef_run).to install_package('drush').with(version: chef_run.node['osl-drupal']['drush']['version'])
      end
    end
  end
end
