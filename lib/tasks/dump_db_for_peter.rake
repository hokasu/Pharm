task :dump_db_for_peter do
    system "mysqldump -u root -p pharm_development > ~/Dropbox/rob\ -\ peter/"
end
