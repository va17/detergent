-ifndef(DETERGENT).
-define(DETERGENT, true).

-define(DEFAULT_PREFIX, "ns1").

-record(call_opts, {url, prefix=?DEFAULT_PREFIX,
                    http_headers=[],
                    http_client_options=[],
                    request_logger=fun(_) -> ok end,
                    response_logger=fun(_) -> ok end}).

-record(wsdl, {operations, model, module}).
-record(port, {service, port, binding, address}).
-record(operation, {service, port, operation, binding, address, action}).
-record('SOAP-ENV:detail', {anyAttribs, choice}).
-record('SOAP-ENV:Fault', {anyAttribs, 'faultcode', 'faultstring', 'faultactor', 'detail'}).
-record('SOAP-ENV:Body', {anyAttribs, choice}).
-record('SOAP-ENV:Header', {anyAttribs, choice}).
-record('SOAP-ENV:Envelope', {anyAttribs, 'Header', 'Body', choice}).
-record('wsdl:tExtensibilityElement', {anyAttribs, 'wsdl:required'}).
-record('wsdl:tPort', {anyAttribs, 'name', 'binding', 'documentation', choice}).
-record('wsdl:tService', {anyAttribs, 'name', 'documentation', choice, 'port'}).
-record('wsdl:tBindingOperation', {anyAttribs, 'name', 'documentation', choice, 'input', 'output', 'fault'}).
-record('wsdl:tBindingOperationFault', {anyAttribs, 'name', 'documentation', choice}).
-record('wsdl:tBindingOperationMessage', {anyAttribs, 'name', 'documentation', choice}).
-record('wsdl:tBinding', {anyAttribs, 'name', 'type', 'documentation', choice, 'operation'}).
-record('wsdl:tFault', {anyAttribs, 'name', 'message', 'documentation'}).
-record('wsdl:tParam', {anyAttribs, 'name', 'message', 'documentation'}).
-record('wsdl:solicit-response-or-notification-operation', {anyAttribs, 'output', 'solicit-response-or-notification-operation/SEQ1'}).
-record('wsdl:solicit-response-or-notification-operation/SEQ1', {anyAttribs, 'input', 'fault'}).
-record('wsdl:request-response-or-one-way-operation', {anyAttribs, 'input', 'request-response-or-one-way-operation/SEQ1'}).
-record('wsdl:request-response-or-one-way-operation/SEQ1', {anyAttribs, 'output', 'fault'}).
-record('wsdl:tOperation', {anyAttribs, 'name', 'parameterOrder', 'documentation', any, choice}).
-record('wsdl:tPortType', {anyAttribs, 'name', 'documentation', 'operation'}).
-record('wsdl:tPart', {anyAttribs, 'name', 'element', 'type', 'documentation'}).
-record('wsdl:tMessage', {anyAttribs, 'name', 'documentation', choice, 'part'}).
-record('wsdl:tTypes', {anyAttribs, 'documentation', choice}).
-record('wsdl:tImport', {anyAttribs, 'namespace', 'location', 'documentation'}).
-record('wsdl:tDefinitions', {anyAttribs, 'targetNamespace', 'name', 'documentation', any, choice}).
-record('wsdl:anyTopLevelOptionalElement-service', {anyAttribs, 'service'}).
-record('wsdl:anyTopLevelOptionalElement-binding', {anyAttribs, 'binding'}).
-record('wsdl:anyTopLevelOptionalElement-portType', {anyAttribs, 'portType'}).
-record('wsdl:anyTopLevelOptionalElement-message', {anyAttribs, 'message'}).
-record('wsdl:anyTopLevelOptionalElement-types', {anyAttribs, 'types'}).
-record('wsdl:anyTopLevelOptionalElement-import', {anyAttribs, 'import'}).
-record('wsdl:anyTopLevelOptionalElement', {anyAttribs, choice}).
-record('wsdl:tExtensibleDocumented', {anyAttribs, 'documentation', choice}).
-record('wsdl:tExtensibleAttributesDocumented', {anyAttribs, 'documentation'}).
-record('wsdl:tDocumented', {anyAttribs, 'documentation'}).
-record('wsdl:tDocumentation-any', {anyAttribs, choice}).
-record('wsdl:tDocumentation', {anyAttribs, choice}).
-record('SOAP-ENV:tBinding', {anyAttribs, 'wsdl:required', 'transport', 'style'}).
-record('SOAP-ENV:tOperation', {anyAttribs, 'wsdl:required', 'soapAction', 'style'}).
-record('SOAP-ENV:tBody', {anyAttribs, 'wsdl:required', 'parts', 'namespace', 'use', 'encodingStyle'}).
-record('SOAP-ENV:tFaultRes', {anyAttribs, 'wsdl:required', 'parts', 'namespace', 'use', 'encodingStyle'}).
-record('SOAP-ENV:tFault', {anyAttribs, 'wsdl:required', 'parts', 'namespace', 'use', 'encodingStyle', 'name'}).
-record('SOAP-ENV:tHeader', {anyAttribs, 'wsdl:required', 'namespace', 'encodingStyle', 'use', 'part', 'message', 'headerfault'}).
-record('SOAP-ENV:tHeaderFault', {anyAttribs, 'namespace', 'encodingStyle', 'use', 'part', 'message'}).
-record('SOAP-ENV:tAddress', {anyAttribs, 'wsdl:required', 'location'}).

-endif.
