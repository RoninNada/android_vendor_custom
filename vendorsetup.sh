for f in $(cat vendor/custom/custom.devices); do
    add_lunch_combo lineage_$f-userdebug;
    add_lunch_combo lineage_$f-user;
done
