class Constants {
  static const Map<String, List<Map<String, dynamic>>> allTypes = {
    "End-to-End Testing": [
      {
        'id': 'basics',
        'title': 'Basics',
        'tier': 'free',
        'topics': ['User flows', 'scenarios', 'headless mode'],
      },
      {
        'id': 'cypress',
        'title': 'Cypress',
        'tier': 'free',
        'topics': ['Commands', 'assertions', 'stubs', 'videos'],
      },
      {
        'id': 'selenium',
        'title': 'Selenium',
        'tier': 'free',
        'topics': ['WebDriver', 'locators', 'waits', 'actions'],
      },
      {
        'id': 'puppeteer',
        'title': 'Puppeteer',
        'tier': 'free',
        'topics': ['Browser control', 'screenshots', 'network interception'],
      },
      {
        'id': 'scenarios',
        'title': 'Test Scenarios',
        'tier': 'vip',
        'topics': ['Happy paths', 'edge cases', 'data-driven'],
      },
      {
        'id': 'automation',
        'title': 'Automation Frameworks',
        'tier': 'vip',
        'topics': ['Playwright', 'Appium', 'cross-browser'],
      },
    ],
    "Performance Optimization": [
      {
        'id': 'basics',
        'title': 'Basics',
        'tier': 'free',
        'topics': ['Bottlenecks', 'profiling', 'benchmarks'],
      },
      {
        'id': 'caching',
        'title': 'Caching',
        'tier': 'free',
        'topics': ['Browser cache', 'server cache', 'Redis/Memcached'],
      },
      {
        'id': 'minification',
        'title': 'Minification & Bundling',
        'tier': 'free',
        'topics': ['Uglify', 'Webpack', 'tree shaking'],
      },
      {
        'id': 'lazy',
        'title': 'Lazy Loading',
        'tier': 'free',
        'topics': ['Images', 'components', 'code splitting'],
      },
      {
        'id': 'cdn',
        'title': 'CDN',
        'tier': 'vip',
        'topics': ['Edge networks', 'static assets', 'geo-distribution'],
      },
      {
        'id': 'profiling',
        'title': 'Profiling Tools',
        'tier': 'vip',
        'topics': ['Chrome DevTools', 'Lighthouse', 'WebPageTest'],
      },
      {
        'id': 'database',
        'title': 'Database Optimization',
        'tier': 'vip',
        'topics': ['Indexes', 'query optimization', 'caching'],
      },
    ],
    "Design Patterns": [
      {
        'id': 'basics',
        'title': 'Basics',
        'tier': 'free',
        'topics': ['Creational', 'structural', 'behavioral'],
      },
      {
        'id': 'singleton',
        'title': 'Singleton',
        'tier': 'free',
        'topics': ['Single instance', 'eager/lazy', 'thread safety'],
      },
      {
        'id': 'factory',
        'title': 'Factory',
        'tier': 'free',
        'topics': ['Abstract factory', 'builder', 'prototype'],
      },
      {
        'id': 'observer',
        'title': 'Observer',
        'tier': 'free',
        'topics': ['Pub/sub', 'event emitters', 'callbacks'],
      },
      {
        'id': 'mvc',
        'title': 'MVC',
        'tier': 'vip',
        'topics': ['Model-view-controller', 'separation of concerns'],
      },
      {
        'id': 'solid',
        'title': 'SOLID Principles',
        'tier': 'vip',
        'topics': [
          'Single responsibility',
          'open-closed',
          'dependency inversion',
        ],
      },
      {
        'id': 'microservices',
        'title': 'Microservices Patterns',
        'tier': 'vip',
        'topics': ['Saga', 'CQRS', 'event sourcing'],
      },
    ],
    "Accessibility & SEO": [
      {
        'id': 'accessibility',
        'title': 'Accessibility Basics',
        'tier': 'free',
        'topics': ['WCAG guidelines', 'screen readers', 'keyboard navigation'],
      },
      {
        'id': 'aria',
        'title': 'ARIA',
        'tier': 'free',
        'topics': ['Roles', 'labels', 'states', 'properties'],
      },
      {
        'id': 'seo',
        'title': 'SEO Basics',
        'tier': 'free',
        'topics': ['On-page factors', 'keywords', 'site speed'],
      },
      {
        'id': 'meta',
        'title': 'Meta Tags',
        'tier': 'free',
        'topics': ['Title', 'description', 'open graph', 'twitter cards'],
      },
      {
        'id': 'semantics',
        'title': 'Semantic Html',
        'tier': 'vip',
        'topics': ['Headings', 'alt text', 'landmarks'],
      },
      {
        'id': 'crawling',
        'title': 'Crawling & Indexing',
        'tier': 'vip',
        'topics': ['Robots.txt', 'sitemaps', 'canonical tags'],
      },
      {
        'id': 'tools',
        'title': 'Tools & Auditing',
        'tier': 'vip',
        'topics': ['WAVE', 'Google Search Console', 'a11y audits'],
      },
    ],
    "Microservices": [
      {
        'id': 'basics',
        'title': 'Basics',
        'tier': 'free',
        'topics': [
          'Monolith vs microservices',
          'decomposition',
          'bounded contexts',
        ],
      },
      {
        'id': 'communication',
        'title': 'Communication',
        'tier': 'free',
        'topics': ['Sync (HTTP)', 'async (messaging)', 'gRPC'],
      },
      {
        'id': 'discovery',
        'title': 'Service Discovery',
        'tier': 'free',
        'topics': ['Eureka', 'Consul', 'registration'],
      },
      {
        'id': 'gateway',
        'title': 'API Gateway',
        'tier': 'free',
        'topics': ['Kong', 'Zuul', 'rate limiting', 'auth'],
      },
      {
        'id': 'resilience',
        'title': 'Resilience Patterns',
        'tier': 'vip',
        'topics': ['Circuit breaker', 'retry', 'bulkhead'],
      },
      {
        'id': 'deployment',
        'title': 'Deployment',
        'tier': 'vip',
        'topics': ['Docker/Kubernetes', 'service mesh (Istio)'],
      },
      {
        'id': 'monitoring',
        'title': 'Monitoring',
        'tier': 'vip',
        'topics': ['Distributed tracing (Jaeger)', 'logs aggregation'],
      },
    ],
    "Real-Time Features": [
      {
        'id': 'basics',
        'title': 'Basics',
        'tier': 'free',
        'topics': ['Bi-directional', 'persistent connections', 'use cases'],
      },
      {
        'id': 'websockets',
        'title': 'WebSockets',
        'tier': 'free',
        'topics': ['Handshakes', 'fallbacks', 'protocols'],
      },
      {
        'id': 'socketio',
        'title': 'Socket.io',
        'tier': 'free',
        'topics': ['Rooms', 'namespaces', 'events', 'broadcasting'],
      },
      {
        'id': 'polling',
        'title': 'Polling & Long Polling',
        'tier': 'free',
        'topics': ['Short/long polling', 'implementation', 'drawbacks'],
      },
      {
        'id': 'sse',
        'title': 'Server-Sent Events',
        'tier': 'vip',
        'topics': ['One-way', 'event streams', 'reconnections'],
      },
      {
        'id': 'pubsub',
        'title': 'Pub/Sub Systems',
        'tier': 'vip',
        'topics': ['RabbitMQ', 'Kafka', 'topics'],
      },
    ],
    "Mobile Integration": [
      {
        'id': 'basics',
        'title': 'Basics',
        'tier': 'free',
        'topics': ['Hybrid vs native', 'responsiveness', 'touch events'],
      },
      {
        'id': 'pwa',
        'title': 'Progressive Web Apps',
        'tier': 'free',
        'topics': [
          'Manifest',
          'service workers',
          'offline support',
          'installable',
        ],
      },
      {
        'id': 'reactnative',
        'title': 'React Native',
        'tier': 'free',
        'topics': ['Components', 'expo', 'navigation', 'state management'],
      },
      {
        'id': 'flutter',
        'title': 'Flutter',
        'tier': 'free',
        'topics': ['Widgets', 'state management', 'providers', 'animations'],
      },
      {
        'id': 'ionic',
        'title': 'Ionic',
        'tier': 'vip',
        'topics': ['Capacitor', 'stencils', 'framework agnostic'],
      },
      {
        'id': 'api',
        'title': 'Mobile APIs',
        'tier': 'vip',
        'topics': ['Responsive APIs', 'mobile-first design', 'cors for mobile'],
      },
      {
        'id': 'push',
        'title': 'Push Notifications',
        'tier': 'vip',
        'topics': ['FCM', 'APNs', 'topics', 'device tokens'],
      },
    ],
    "Emerging Technologies": [
      {
        'id': 'web3',
        'title': 'Web3 & Blockchain',
        'tier': 'free',
        'topics': [
          'Decentralized apps',
          'smart contracts',
          'wallets',
          'Ethereum',
        ],
      },
      {
        'id': 'ai',
        'title': 'AI/ML Integration',
        'tier': 'free',
        'topics': [
          'TensorFlow.js',
          'model training',
          'inference',
          'data pipelines',
        ],
      },
      {
        'id': 'wasm',
        'title': 'WebAssembly',
        'tier': 'free',
        'topics': [
          'Compilation',
          'performance',
          'use cases',
          'Rust integration',
        ],
      },
      {
        'id': 'vrar',
        'title': 'VR/AR',
        'tier': 'free',
        'topics': ['WebVR', 'A-Frame', 'three.js', 'immersive experiences'],
      },
      {
        'id': 'edge',
        'title': 'Edge Computing',
        'tier': 'vip',
        'topics': ['Functions at edge', 'CDNs', 'low latency'],
      },
      {
        'id': 'serverless',
        'title': 'Advanced Serverless',
        'tier': 'vip',
        'topics': ['Lambda@Edge', 'workers', 'event triggers'],
      },
      {
        'id': 'quantum',
        'title': 'Quantum Computing Basics',
        'tier': 'vip',
        'topics': ['Concepts', 'qubits', 'libraries (Qiskit)'],
      },
    ],
  };

  static const List<AllLanguages> allLanguages = [
    AllLanguages(name: 'HTML', apiName: "html", tier: LangTier.free),
    AllLanguages(name: 'CSS', apiName: "css", tier: LangTier.free),
    AllLanguages(
      name: 'JavaScript',
      apiName: "javascript",
      tier: LangTier.free,
    ),
    AllLanguages(
      name: 'TypeScript',
      apiName: "typescript",
      tier: LangTier.free,
    ),
    AllLanguages(name: 'React', apiName: "react", tier: LangTier.free),
    AllLanguages(name: 'Angular', apiName: "angular", tier: LangTier.free),
    AllLanguages(name: 'Vue', apiName: "vue", tier: LangTier.free),
    AllLanguages(name: 'Node.js', apiName: "node", tier: LangTier.free),
    AllLanguages(name: 'Python', apiName: "python", tier: LangTier.free),
    AllLanguages(name: 'Django', apiName: "django", tier: LangTier.free),
    AllLanguages(name: 'Java', apiName: "java", tier: LangTier.vip),
    AllLanguages(name: 'C#', apiName: "csharp", tier: LangTier.vip),
    AllLanguages(name: 'C++', apiName: "cpp", tier: LangTier.vip),
    AllLanguages(name: 'C', apiName: "c", tier: LangTier.vip),
    AllLanguages(name: 'Rust', apiName: "rust", tier: LangTier.free),
    AllLanguages(name: 'Go', apiName: "go", tier: LangTier.free),
    AllLanguages(name: 'PHP', apiName: "php", tier: LangTier.free),
    AllLanguages(name: 'Ruby', apiName: "ruby", tier: LangTier.free),
    AllLanguages(name: 'Swift', apiName: "swift", tier: LangTier.free),
    AllLanguages(name: 'Kotlin', apiName: "kotlin", tier: LangTier.free),
    AllLanguages(name: 'R', apiName: "r", tier: LangTier.free),
    AllLanguages(name: 'MATLAB', apiName: "matlab", tier: LangTier.free),
    AllLanguages(name: 'SQL', apiName: "sql", tier: LangTier.free),
    AllLanguages(name: 'Elixir', apiName: "elixir", tier: LangTier.free),
    AllLanguages(name: 'Clojure', apiName: "clojure", tier: LangTier.free),
    AllLanguages(name: 'Scala', apiName: "scala", tier: LangTier.free),
  ];
}

enum LangTier { free, vip }

class AllLanguages {
  final String name;
  final String apiName;
  final LangTier tier;

  const AllLanguages({
    required this.name,
    required this.apiName,
    required this.tier,
  });
}
