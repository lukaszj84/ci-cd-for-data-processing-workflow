#!/bin/bash
#
# This script sets the environment variables for project environment specific
# information such as project_id, region and zone choice. And also name of
# buckets that are used by the build pipeline and the data processing workflow.
#
# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
export TEST='bi-dev'
export GCP_PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export PROJECT_NUMBER=$(gcloud projects describe "${GCP_PROJECT_ID}" --format='get(projectNumber)')
export DATAFLOW_JAR_BUCKET_dev="${GCP_PROJECT_ID}-composer-dataflow-source-${dev}"
export INPUT_BUCKET_dev="${GCP_PROJECT_ID}-composer-input-${dev}"
export RESULT_BUCKET_dev="${GCP_PROJECT_ID}-composer-result-${dev}"
export REF_BUCKET_dev="${GCP_PROJECT_ID}-composer-ref-${dev}"
export DATAFLOW_STAGING_BUCKET_dev="${GCP_PROJECT_ID}-dataflow-staging-${dev}"
export pro='bi-pro'
export DATAFLOW_JAR_BUCKET_pro="${GCP_PROJECT_ID}-composer-dataflow-source-${pro}"
export INPUT_BUCKET_pro="${GCP_PROJECT_ID}-composer-input-${pro}"
export RESULT_BUCKET_pro="${GCP_PROJECT_ID}-composer-result-${pro}"
export DATAFLOW_STAGING_BUCKET_pro="${GCP_PROJECT_ID}-dataflow-staging-${pro}"
export COMPOSER_REGION='europe-west1'
export RESULT_BUCKET_REGION="${COMPOSER_REGION}"
export COMPOSER_ZONE_ID='europe-west1-b'

export COMPOSER_ENV_NAME='bi-dev'
export SOURCE_CODE_REPO='github_adeo_lmpl-bi-dev'
export COMPOSER_DAG_NAME_dev='europe-west1-bi-dev-f6536b5b-bucket'
export COMPOSER_DAG_NAME_pro='pro_word_count'
