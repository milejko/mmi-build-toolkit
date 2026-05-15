# MMI Build Toolkit

Build toolkit for mmi class applications.

## Requirements

- PHP

## Installation

```bash
composer install
```

## Available Commands

### Development Server

```bash
composer start
```

Starts a PHP development server on `localhost:8080`.

### Code Fixing

```bash
composer fix:phpcbf        # Run PHP Code Beautifier and Fixer
composer fix:php-cs-fixer  # Run PHP CS Fixer on src and tests
composer fix:all           # Run all code fixers
```

### Testing & Analysis

```bash
composer test:security-checker  # Check for security vulnerabilities
composer test:phpstan           # Run static analysis (level 1)
composer test:phpcs             # Run PHP CodeSniffer
composer test:phpmd             # Run PHP Mess Detector
composer test:phpunit           # Run PHPUnit with coverage reports
composer test:all               # Run all tests and analysis
```

### Reports

```bash
composer report:metrics  # Generate PHPMetrics report
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
