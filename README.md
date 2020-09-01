# Test PCP with nodes specified in inventory.yaml explicitly

bolt command run "echo Hello" --targets nix0.classroom.puppet.com

# Test PuppetDB inventory plugin with node not specified in inventory.yaml

bolt command run "echo Hello" --targets nix2.classroom.puppet.com

# Show available inventory groups

bolt group show

# Test group definition using PQL mapping

bolt command run "echo Hello" --targets testgroup

# Run ad hoc Puppet Code on a connected endpoint

bolt apply test.pp --targets nix0.classroom.puppet.com

# Get a list of tasks (run from the Puppet Server, not the Bolt workstation)

puppet task show --environment <Puppet Environment>

# Bolt connection modules for Puppetfile in PE Server

mod 'puppetlabs-bolt_shim', '0.3.2'
mod 'puppetlabs-apply_helpers', '0.2.1'
