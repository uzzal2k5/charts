{{/*
Expand the name of the chart with the release name.
*/}}
{{- define "postgresql-ha.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{- define "primary.name" -}}
{{ .Values.primary.name | default "primary" }}
{{- end }}

{{- define "replication.name" -}}
{{ .Values.replication.name | default "replica" }}
{{- end }}

