{{- define "etcd.name" -}}
etcd
{{- end }}

{{- define "etcd.fullname" -}}
{{ .Release.Name }}-{{ include "etcd.name" . }}
{{- end }}

{{- define "etcd.initialCluster" -}}
{{- $name := include "etcd.fullname" . -}}
{{- $replicaCount := .Values.replicaCount | default 1 | int -}}  # Make sure it's evaluated as an integer
{{- range $i, $e := until $replicaCount -}}
{{- printf "%s-%d=http://%s-%d.%s:2380" $name $i $name $i $name -}}
{{- if lt (add $i 1) $replicaCount -}},{{ end }}  # Add a comma if not the last element
{{- end }}
{{- end }}
