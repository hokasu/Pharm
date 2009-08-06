task :dump_db_for_peter do
  system "mysqldump -u root -p pharm_development > ~/Dropbox/rob_peter/pharm_development.sql"
end
