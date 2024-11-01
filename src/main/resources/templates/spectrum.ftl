<link href="https://cdn.jsdelivr.net/npm/spectrum-colorpicker2/dist/spectrum.min.css" rel="stylesheet" type="text/css" />

<div class="form-cell" ${elementMetaData!}>
  <label class="label">${element.properties.label} <span class="form-cell-validator">${decoration}</span><#if error??> <span class="form-error-message">${error}</span></#if></label>
  <#if (element.properties.readonly! == 'true' && element.properties.readonlyLabel! == 'true') >
      <div class="form-cell-value"><span>${value!?html}</span></div>
      <input id="${elementParamName!}" name="${elementParamName!}" type="hidden" class="spectrum" value="${value!?html}" />
  <#else>
      <input id="${elementParamName!}" name="${elementParamName!}" type="text" class="spectrum" size="${element.properties.size!}" value="${value!?html}" maxlength="${element.properties.maxlength!}" <#if error??>class="form-error-cell"</#if> <#if element.properties.readonly! == 'true'>readonly</#if> />
  </#if>
</div>

<script src="https://cdn.jsdelivr.net/npm/spectrum-colorpicker2/dist/spectrum.min.js"></script>

<script type="text/javascript">
    $('document').ready(function(){
      var config = {
          type: "component",
          showButtons: false
      };

      $("#${elementParamName!}").spectrum(config);
    });
</script>