{{- define "etcd.name" -}}
etcd
{{- end }}

{{- define "etcd.fullname" -}}
{{ .Release.Name }}-{{ include "etcd.name" . }}
{{- end }}

{{- define "etcd.initialCluster" -}}
{{- $name := include "etcd.fullname" . -}}
{{- range $i, $e := until (.Values.replicaCount | int) -}}
{{ printf "%s-%d=http://%s-%d.%s:2380" $name $i $name $i $name }}
{{- if lt (add1 $i) (.Values.replicaCount | int) }},{{ end }}
{{- end }}
{{- end }}
