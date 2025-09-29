# [0.8.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.7.0...v0.8.0) (2025-09-29)


### Bug Fixes

* update a documentation link for terraform ([f269aac](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/f269aac8c5747e42972c39ecf3cc7807cb90e78a))
* Update networkELB to include AWS namespace - OBSSD-1396 ([876d77c](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/876d77ce3d402061e819f6de855c34951317f39c))


### Features

* S3 Records, CloudTrail Events, TTL ([c98f9c9](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/c98f9c9a4f79b12738783fbf765aee34c7c11f8f))



# [0.7.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.6.3...v0.7.0) (2025-04-02)


### Bug Fixes

* **metrics:** specify correct units for percent ([ff65f9f](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/ff65f9fb87068801cbc96b1154150a132d361f95))


### Features

* skip rematerialization by default and make it toggleable ([191d66a](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/191d66a624a795737f749820896dde507089be89))



## [0.6.3](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.6.2...v0.6.3) (2025-02-27)


### Bug Fixes

* **metrics:** include namespace column in schema ([b864c1e](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/b864c1e00e7ddb7f5690807952e3829d1c20a956))



## [0.6.2](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.6.1...v0.6.2) (2025-02-21)


### Bug Fixes

* add delimiter to bucket names and replace region map with cloud info ([248d511](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/248d5114f2159316f5b4beb84f754290d869a68d))



## [0.6.1](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.6.0...v0.6.1) (2025-01-14)


### Bug Fixes

* increase max_time_diff to 4h for AWS Config ([51579db](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/51579db067fda0e498218609c7d768868d369871))



# [0.6.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.5.0...v0.6.0) (2024-12-17)


### Features

* accommodate x-aws-change ([ca04b53](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/ca04b5316d13a5a1362c6460cb0a517fba8870cc))



# [0.5.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.4.2...v0.5.0) (2024-11-22)


### Features

* add quickstart instance dashboards ([c284913](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/c28491357110dad93cd7b1dc78574162a8621b18))



## [0.4.2](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.4.1...v0.4.2) (2024-11-14)


### Bug Fixes

* add map and variable for cluster ([97431f5](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/97431f54809c99078337d190c0c5271f3f5c5eff))



## [0.4.1](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.4.0...v0.4.1) (2024-11-14)


### Reverts

* "fix: add variable for observe cluster region for s3forwarder" ([2d36cae](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/2d36cae49967d9cc3c91937b058eb2d17ae0b7cc))



# [0.4.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.3.2...v0.4.0) (2024-11-14)


### Bug Fixes

* OB-38940 make region of filedrop depend on cluster region ([5b83d40](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/5b83d405db6524b30298f85837a978f42b6c94a0))


### Features

* add a region suffix to the collection name ([62e79d1](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/62e79d1016ee7c33b1f957b4d2e4a37a5e06c77e))
* enable filedrop by default ([1793d0f](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/1793d0fa4afacd95931ab8dc805f1c9851552d09))



## [0.3.2](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.3.1...v0.3.2) (2024-10-17)


### Bug Fixes

* **connections:** streamline filedrop and s3 forwarder sources ([636e4c7](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/636e4c759a3a75d63150899cfe904c2476369141))
* **resources:** extract account ID and region for S3 buckets ([e3976db](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/e3976dbca5fd45fd8a229ce62247d361ceaaa5e5))



## [0.3.1](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.3.0...v0.3.1) (2024-10-16)


### Bug Fixes

* **metrics:** correctly account for poller sources ([af5cb45](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/af5cb45461dd5937030c85e62d9bdbf1955235d9))



# [0.3.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.2.0...v0.3.0) (2024-09-06)


### Features

* add support for s3 forwarder ([75b13f1](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/75b13f1f4c38a7304de71b7f0c1fc393f6abc7ca))



# [0.2.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/v0.1.0...v0.2.0) (2024-09-06)


### Features

* **metrics:** add support for cloudwatch metrics poller ([a5f993b](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/a5f993ba759c04ee16f902ba16a02ff73378600b))



# [0.1.0](https://github.com/observeinc/terraform-observe-aws-quickstart/compare/edb06f1b658fbf93ab810e493e583b7e68b95ddf...v0.1.0) (2024-06-20)


### Features

* AWS quickstart app ([edb06f1](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/edb06f1b658fbf93ab810e493e583b7e68b95ddf))
* updated collection ([d319b27](https://github.com/observeinc/terraform-observe-aws-quickstart/commit/d319b2766de16e5b61e39456a49ca27a46c88087))



