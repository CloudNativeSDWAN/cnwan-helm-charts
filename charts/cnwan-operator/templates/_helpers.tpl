{{/*
Expand the name of the chart.
*/}}
{{- define "cnwan-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
TODO: this is disabled because we don't support installing the operator on a
namespace different from the default one.
{{- define "cnwan-operator.fullname" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}
*/}}
{{- define "cnwan-operator.fullname" -}}
{{ include "cnwan-operator.name" .}}
{{- end}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cnwan-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cnwan-operator.labels" -}}
helm.sh/chart: {{ include "cnwan-operator.chart" . }}
{{ include "cnwan-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
cnwan.io/application: operator
control-plane: controller-manager
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cnwan-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cnwan-operator.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
cnwan.io/application: operator
{{- end }}

