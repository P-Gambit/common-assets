Rails.application.routes.draw do
    Rack::Utils::SYMBOL_TO_STATUS_CODE.select{ |key, value| value.to_s.match('\b(?:4[0-9]{2}|5[0-9]{2}|599)\b') }.each do |code, status|
        get status.to_s, to: 'common-assets/exceptions#show', as: code, code: code
    end
end
  