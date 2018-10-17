```
{
  "timestamp" : "2018-10-17T08:38:59.774Z",
  "clusters" : [ {
    "name" : "skalolazka",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "700448768"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "700448768"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "4160539852"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "700"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-35-4.eu-central-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-0a05b8f7d1e4d3511901cae2175f96af",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0c0a257b9bacac059"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-29e4dabef4497c4814c9b515b824d071",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0b399bc92b1434731"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-5fee7413a5756ea36b9be7bab59771ca",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-03e1c8a37dd307aca"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dzupsw8rs27f826buxzd9vx1t"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "aml7fogopj52i1voo8yrwh34j"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-0a05b8f7d1e4d3511901cae2175f96af",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0c0a257b9bacac059"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "duoao4absg317u1xasc5uyxdg"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7f0uxv3s9yyirfedycvjm1k2f"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-5fee7413a5756ea36b9be7bab59771ca",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-03e1c8a37dd307aca"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "f43sjcy5o9ce2h7uyz8n92pvk"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-35-4.eu-central-1.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "huehue"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-29e4dabef4497c4814c9b515b824d071"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "es4eo3utcczkz1joeywg22fkv"
          }, {
            "name" : "secret_key",
            "value" : "ZRCWutdHfrlxiHH4W57LFrLYeKqw2V"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-35-4.eu-central-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "700448768"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9kruzvr2196dg2m6ntfylj30i"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "8"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "700448768"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "4668"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "700448768"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "5001"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "true"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "HXKQopujH8n3tIQy2vieDxs54iW4G3"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5d17sj1fxie2nn9nvbky1h8f6"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-0a05b8f7d1e4d3511901cae2175f96af",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0c0a257b9bacac059"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d50bawba8kff9o3ftufm098u9"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-29e4dabef4497c4814c9b515b824d071",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0b399bc92b1434731"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "zamgb7o4jbyo3xc7immmd0rm"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "kqsnzrzba95q627i98q8j3d4"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-5fee7413a5756ea36b9be7bab59771ca",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-03e1c8a37dd307aca"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "beilnpa4qredbrg1b34u14734"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "83"
          }, {
            "name" : "role_jceks_password",
            "value" : "b3vvl2zk0lan99kbjxji99mz2"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "700448768"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3157157068"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "1073741824"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "700448768"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "6aSNqPCeOyHkcGAhKOu1FumHwVEmLe"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "mpg4wJW01zbQmANBmMceXQgkEMkUvV"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "GcbOxIkfR8fjHyI5i6LC4Y5v1egwTp"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-0a05b8f7d1e4d3511901cae2175f96af",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0c0a257b9bacac059"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3yubauuc5axq5abu9ol15li38"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-29e4dabef4497c4814c9b515b824d071",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0b399bc92b1434731"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8kbyccgyyfvinpnf9k6vtjaj7"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8gn2z95ksh4vj76tw2irst8io"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-5fee7413a5756ea36b9be7bab59771ca",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-03e1c8a37dd307aca"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "57uulms8mrqxr0aidiyua7212"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1ntfu4yckmlacux8oa4p79j5r"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2d1nv009sqn2hkc46t3hoh0tt"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-29e4dabef4497c4814c9b515b824d071",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-0b399bc92b1434731"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "665twtu0fpyooam3wboarfcva"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-29e4dabef4497c4814c9b515b824d071",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0b399bc92b1434731"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ewqkgva6xekwq3p1dbo4ypmnx"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9jp7i75ilj6burbpssga7w79x"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c56qojys5ehys94x97ovpy2fn"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-3c14f2e2874f4d8226395f70b6832b7b",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-04477fc1564592c9e"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "91"
          }, {
            "name" : "role_jceks_password",
            "value" : "7ss8x2q3fphwonhq4tm5oiecs"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-8a224d1f38c8a0742eba2d38ac9ddbcb",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0ec03f8f0422c55ee"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "85"
          }, {
            "name" : "role_jceks_password",
            "value" : "10fnfkgrquo5nnz949886qcxa"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-0ec03f8f0422c55ee",
    "ipAddress" : "172.31.32.101",
    "hostname" : "ip-172-31-32-101.eu-central-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0c0a257b9bacac059",
    "ipAddress" : "172.31.32.148",
    "hostname" : "ip-172-31-32-148.eu-central-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-03e1c8a37dd307aca",
    "ipAddress" : "172.31.35.4",
    "hostname" : "ip-172-31-35-4.eu-central-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-04477fc1564592c9e",
    "ipAddress" : "172.31.38.97",
    "hostname" : "ip-172-31-38-97.eu-central-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0b399bc92b1434731",
    "ipAddress" : "172.31.45.168",
    "hostname" : "ip-172-31-45-168.eu-central-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-8a224d1f38c8a0742eba2d38ac9ddbcb",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "81fdda63eaf6bdab482efba27b62bd8b0ca087fceea4a0732e512f7712d5849b",
    "pwSalt" : -6412649884202184245,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-8a224d1f38c8a0742eba2d38ac9ddbcb",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "401adfffcb3328b72ce4e92dac4ec2016292d742b215bc35a4d6409aa95078d4",
    "pwSalt" : -8294600139815613222,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-8a224d1f38c8a0742eba2d38ac9ddbcb",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "1c9c7dd4e7f362294ab67e8d0caa4382c26da60cb577e367672b359e1a1bf31b",
    "pwSalt" : -2732314518153990124,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-8a224d1f38c8a0742eba2d38ac9ddbcb",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "7804ee34c1489d49af2f70c7acedc809862e0cfe6991de7b1b95094e2579f215",
    "pwSalt" : 2975608267472270338,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "3e014fb8ac6d2c9729b023c389dfc03767855dd0815afc9690cbde2d15538ee5",
    "pwSalt" : -5412299067024920138,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "ed084a16b1e073f2871373d6355ab687e272b968e60fc07183b97dd42a445836",
    "pwSalt" : 3899588788183341798,
    "pwLogin" : true
  }, {
    "name" : "skalolazka",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "41ae09af5337952cb21a9880c78752c56acc15c0d90d32d5184c64558cb35caa",
    "pwSalt" : -8992730396233866174,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20161019-1014",
    "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "700448768"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "700448768"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "911212544"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-35-4.eu-central-1.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "700448768"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "700448768"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "911212544"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-8a224d1f38c8a0742eba2d38ac9ddbcb",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-0ec03f8f0422c55ee"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "1432hbtp4ckr7w8vpp2x93ydx"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-8a224d1f38c8a0742eba2d38ac9ddbcb",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-0ec03f8f0422c55ee"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "afaivxbgderiznv33t6tn7iir"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-8a224d1f38c8a0742eba2d38ac9ddbcb",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-0ec03f8f0422c55ee"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "4zf8f71flyzlo86dnwcfscm0w"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-8a224d1f38c8a0742eba2d38ac9ddbcb",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-0ec03f8f0422c55ee"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "lrik8u5by5dlf34qijmbazne"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-8a224d1f38c8a0742eba2d38ac9ddbcb",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-0ec03f8f0422c55ee"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "e7zgqs7i8sk66td6oayji1io0"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/26/2012 21:10"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```