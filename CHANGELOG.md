<!-- markdownlint-disable-file MD024 MD041 -->

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2025-09-24

### Breaking Changes

- Major version bump to 2.0.0 to reflect breaking changes.
- Bump the `WeAreRetail/mssqlpermissions` provider to `~> 1.0`.
- Refactor `mssqlpermissions` resources to use separate resources for role and role members.
- Remove `database_name`, `server_fqdn`, and `server_port` variables as it's no longer needed with the new resource structure.

## [1.2.6] - 2024-05-05

### Fixed

- Raise minimal `WeAreRetail/mssqlpermissions` provider version.

## [1.2.5] - 2024-05-03

### Fixed

- Raise minimal `WeAreRetail/mssqlpermissions` provider version.

## [1.2.4] - 2024-05-03

### Fixed

- Raise minimal `WeAreRetail/mssqlpermissions` provider version.

## [1.2.3] - 2024-05-02

### Fixed

- External user is not contained.

## [1.2.2] - 2024-05-02

### Fixed

- Improve graph dependency.

## [1.2.1] - 2024-05-02

### Fixed

- Add missing external user creation.
- `dbo` must be ignored.

## [1.2.0] - 2024-05-02

### Added

- Variable for additional db_owner members.

## [1.1.0] - 2024-05-02

### Added

- Variable for role name.

## [1.0.0] - 2024-04-17

### Added

- Initial Release.
