RailsAdmin.config do |config|

  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  PAPER_TRAIL_AUDIT_MODEL = ['Contact']

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end
end
