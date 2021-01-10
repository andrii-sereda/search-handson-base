Resource.create!(
    [
        {
            name: 'Amazon EC2',
        },
        {
            name: 'Cloudsigma',
        },
        {
            name: 'Microsoft Azure',
        }
    ]
)


InstanceType.create!(
    [
        {
            name: 'Baseline performance - micro',
            description: 'T2 instances are Burstable Performance Instances that provide a baseline level of CPU performance with the ability to burst above the baseline.',
            api_name: 't2.micro',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 512,
            ssd: false,
            storage_gb: 4,
            price_cents: 40,
            resource: Resource.where(name: 'Amazon EC2').first
        },
        {
            name: 'Baseline performance - small',
            description: 'T2 instances are Burstable Performance Instances that provide a baseline level of CPU performance with the ability to burst above the baseline.',
            api_name: 't2.small',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 1024,
            ssd: false,
            storage_gb: 4,
            price_cents: 65,
            resource: Resource.where(name: 'Amazon EC2').first
        },
        {
            name: 'Baseline performance - medium',
            description: 'T2 instances are Burstable Performance Instances that provide a baseline level of CPU performance with the ability to burst above the baseline.',
            api_name: 't2.medium',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 2048,
            ssd: false,
            storage_gb: 4,
            price_cents: 100,
            resource: Resource.where(name: 'Amazon EC2').first
        },
        {
            name: 'Balanced performance - medium',
            description: 'M5 instances are the latest generation of General Purpose Instances powered by Intel Xeon® Platinum 8175M processors. This family provides a balance of compute, memory, and network resources, and is a good choice for many applications.',
            api_name: 'm5.medium',
            cpus: 2,
            cpu_cores: 1,
            memory_mb: 2048,
            ssd: false,
            storage_gb: 4,
            price_cents: 88,
            resource: Resource.where(name: 'Amazon EC2').first
        },
        {
            name: 'Balanced performance - large',
            description: 'M5 instances are the latest generation of General Purpose Instances powered by Intel Xeon® Platinum 8175M processors. This family provides a balance of compute, memory, and network resources, and is a good choice for many applications.',
            api_name: 'm5.large',
            cpus: 4,
            cpu_cores: 1,
            memory_mb: 4096,
            ssd: false,
            storage_gb: 4,
            price_cents: 112,
            resource: Resource.where(name: 'Amazon EC2').first
        },
        {
            name: 'Balanced performance - xlarge',
            description: 'M5 instances are the latest generation of General Purpose Instances powered by Intel Xeon® Platinum 8175M processors. This family provides a balance of compute, memory, and network resources, and is a good choice for many applications.',
            api_name: 'm5.xlarge',
            cpus: 8,
            cpu_cores: 1,
            memory_mb: 1024 * 8,
            ssd: false,
            storage_gb: 4,
            price_cents: 180,
            resource: Resource.where(name: 'Amazon EC2').first
        },
        {
            name: 'Balanced performance - 2xlarge',
            description: 'M5 instances are the latest generation of General Purpose Instances powered by Intel Xeon® Platinum 8175M processors. This family provides a balance of compute, memory, and network resources, and is a good choice for many applications.',
            api_name: 'm5.2xlarge',
            cpus: 8,
            cpu_cores: 1,
            memory_mb: 1024 * 16,
            ssd: false,
            storage_gb: 4,
            price_cents: 290,
            resource: Resource.where(name: 'Amazon EC2').first
        },


        {
            name: 'Slow and buggy - 1',
            description: 'CloudSigma is a pure-cloud Infrastructure-as-a-Service (IaaS) provider that offers highly available, flexible, enterprise-class cloud servers and cloud hosting solutions. CloudSigma is operational in both Europe and the US, with plans to expand into Australia, Latin America and Asia',
            api_name: 'snb1',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 1024,
            ssd: false,
            storage_gb: 1,
            price_cents: 190,
            resource: Resource.where(name: 'Cloudsigma').first
        },
        {
            name: 'Slow and buggy - 2',
            description: 'CloudSigma is a pure-cloud Infrastructure-as-a-Service (IaaS) provider that offers highly available, flexible, enterprise-class cloud servers and cloud hosting solutions. CloudSigma is operational in both Europe and the US, with plans to expand into Australia, Latin America and Asia',
            api_name: 'snb2',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 1024 * 2,
            ssd: false,
            storage_gb: 1,
            price_cents: 320,
            resource: Resource.where(name: 'Cloudsigma').first
        },
        {
            name: 'Slow and buggy - 3',
            description: 'CloudSigma is a pure-cloud Infrastructure-as-a-Service (IaaS) provider that offers highly available, flexible, enterprise-class cloud servers and cloud hosting solutions. CloudSigma is operational in both Europe and the US, with plans to expand into Australia, Latin America and Asia',
            api_name: 'snb3',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 1024 * 4,
            ssd: false,
            storage_gb: 1,
            price_cents: 540,
            resource: Resource.where(name: 'Cloudsigma').first
        },


        {
            name: 'A1 v2',
            description: 'The Av2 virtual machines offer a cost-effective option for dev-test environments, low-traffic websites and web applications, micro services, and small databases..',
            api_name: 'Av1',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 2048,
            ssd: false,
            storage_gb: 10,
            price_cents: 50,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'A2 v2',
            description: 'The Av2 virtual machines offer a cost-effective option for dev-test environments, low-traffic websites and web applications, micro services, and small databases..',
            api_name: 'Av2',
            cpus: 2,
            cpu_cores: 1,
            memory_mb: 4096,
            ssd: false,
            storage_gb: 20,
            price_cents: 80,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'A4 v2',
            description: 'The Av2 virtual machines offer a cost-effective option for dev-test environments, low-traffic websites and web applications, micro services, and small databases..',
            api_name: 'Av4',
            cpus: 4,
            cpu_cores: 1,
            memory_mb: 8192,
            ssd: false,
            storage_gb: 40,
            price_cents: 100,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'A8 v2',
            description: 'The Av2 virtual machines offer a cost-effective option for dev-test environments, low-traffic websites and web applications, micro services, and small databases..',
            api_name: 'Av8',
            cpus: 8,
            cpu_cores: 1,
            memory_mb: 8192 * 2,
            ssd: false,
            storage_gb: 80,
            price_cents: 135,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'B1MS',
            description: 'Bs-series are economical virtual machines that provide a low-cost option for workloads that typically run at a low to moderate baseline CPU performance, but sometimes need to burst to significantly higher CPU performance when the demand rises. These workloads don’t require the use of the full CPU all the time, but occasionally will need to burst to finish some tasks more quickly',
            api_name: 'B1',
            cpus: 1,
            cpu_cores: 1,
            memory_mb: 1024 * 2,
            ssd: false,
            storage_gb: 4,
            price_cents: 25,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'B2MS',
            description: 'Bs-series are economical virtual machines that provide a low-cost option for workloads that typically run at a low to moderate baseline CPU performance, but sometimes need to burst to significantly higher CPU performance when the demand rises. These workloads don’t require the use of the full CPU all the time, but occasionally will need to burst to finish some tasks more quickly',
            api_name: 'B2',
            cpus: 2,
            cpu_cores: 1,
            memory_mb: 1024 * 8,
            ssd: false,
            storage_gb: 8,
            price_cents: 39,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'B4MS',
            description: 'Bs-series are economical virtual machines that provide a low-cost option for workloads that typically run at a low to moderate baseline CPU performance, but sometimes need to burst to significantly higher CPU performance when the demand rises. These workloads don’t require the use of the full CPU all the time, but occasionally will need to burst to finish some tasks more quickly',
            api_name: 'B4',
            cpus: 4,
            cpu_cores: 1,
            memory_mb: 1024 * 16,
            ssd: false,
            storage_gb: 32,
            price_cents: 67,
            resource: Resource.where(name: 'Microsoft Azure').first
        },
        {
            name: 'B8MS',
            description: 'Bs-series are economical virtual machines that provide a low-cost option for workloads that typically run at a low to moderate baseline CPU performance, but sometimes need to burst to significantly higher CPU performance when the demand rises. These workloads don’t require the use of the full CPU all the time, but occasionally will need to burst to finish some tasks more quickly',
            api_name: 'B4',
            cpus: 8,
            cpu_cores: 1,
            memory_mb: 1024 * 32,
            ssd: false,
            storage_gb: 64,
            price_cents: 159,
            resource: Resource.where(name: 'Microsoft Azure').first
        }

    ]
)
