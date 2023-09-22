{
  sections: {
    'auth.anonymous': {
      enabled: true,
      org_role: 'Editor',
    },
    dashboards: {
      default_home_dashboard_path: '/etc/grafana/provisioning/dashboards/home.json',
    },
    log: {
      level: 'error',
    },
    paths: {
      provisioning: '/etc/grafana/provisioning',
    },
    server: {
      root_url: 'http://localhost:3000/grafana',
      serve_from_sub_path: true,
    },
  },
}
