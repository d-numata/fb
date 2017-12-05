#!/bin/sh
bundle exec cap production unicorn:stop
bundle exec cap production unicorn:start
