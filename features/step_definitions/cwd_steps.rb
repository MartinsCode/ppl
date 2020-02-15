
require "tmpdir"

Given /^I am in an empty directory$/ do
  @directory = Dir.mktmpdir
  Dir.chdir @directory
  configfile = File.open('.pplconfig', 'w')
  configfile << '[address book]'
  configfile << 'path="./"'
  configfile.close
  at_exit do
    FileUtils.rm_rf @directory
  end
end

Given /^I am in an empty address book$/ do
  @directory = Dir.mktmpdir
  Dir.chdir @directory
  configfile = File.open('.pplconfig', 'w')
  configfile << '[address book]'
  configfile << 'path="./"'
  configfile.close
  ppl "init"
  at_exit do
    FileUtils.rm_rf @directory
  end
end

Given /^I am in an address book with a blank contact called bob$/ do
  @directory = Dir.mktmpdir
  Dir.chdir @directory
  configfile = File.open('.pplconfig', 'w')
  configfile << '[address book]'
  configfile << 'path="./"'
  configfile.close
  ppl "init"
  ppl "add bob Bob"
  at_exit do
    FileUtils.rm_rf @directory
  end
end

Given /^I am in the same address book as before$/ do
end

