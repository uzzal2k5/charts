{{- define "storageClass.name" -}}
{{ .Values.storageClass.name | default "storage-class" }}
{{- end }}

{{- define "storageClass.type" -}}
{{ .Values.storageClass.type | default "gp3" }}
{{- end }}

{{- define "storageClass.fsType" -}}
{{ .Values.storageClass.fsType | default "ext4" }}
{{- end }}

{{- define "storageClass.encrypted" -}}
{{ .Values.storageClass.encrypted | default "false" }}
{{- end }}

{{- define "storageClass.reclaimPolicy" -}}
{{ .Values.storageClass.reclaimPolicy | default "Retain" }}
{{- end }}

{{- define "storageClass.volumeBindingMode" -}}
{{ .Values.storageClass.volumeBindingMode | default "WaitForFirstConsumer" }}
{{- end }}

{{- define "storageClass.allowVolumeExpansion" -}}
{{ .Values.storageClass.allowVolumeExpansion | default "true" }}
{{- end }}
