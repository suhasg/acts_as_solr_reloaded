require 'active_record'
require 'rexml/document'
require 'net/http'
require 'yaml'
require 'time'
require 'erb'
require 'rexml/xpath'

dir = File.dirname(__FILE__)
SOLR_PATH = File.expand_path("#{dir}/../solr") unless defined? SOLR_PATH

require File.dirname(__FILE__) + '/solr'
require File.dirname(__FILE__) + '/acts_as_solr/acts_methods'
require File.dirname(__FILE__) + '/acts_as_solr/common_methods'
require File.dirname(__FILE__) + '/acts_as_solr/parser_methods'
require File.dirname(__FILE__) + '/acts_as_solr/class_methods'
require File.dirname(__FILE__) + '/acts_as_solr/dynamic_attribute'
require File.dirname(__FILE__) + '/acts_as_solr/local'
require File.dirname(__FILE__) + '/acts_as_solr/instance_methods'
require File.dirname(__FILE__) + '/acts_as_solr/common_methods'
require File.dirname(__FILE__) + '/acts_as_solr/deprecation'
require File.dirname(__FILE__) + '/acts_as_solr/search_results'
require File.dirname(__FILE__) + '/acts_as_solr/lazy_document'
require File.dirname(__FILE__) + '/acts_as_solr/mongo_mapper'
require File.dirname(__FILE__) + '/acts_as_solr/post'

# reopen ActiveRecord and include the acts_as_solr method
ActiveRecord::Base.extend ActsAsSolr::ActsMethods
