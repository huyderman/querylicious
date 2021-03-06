# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.4.0] - 2018-05-07

### Changed

- Updated minimum required versions for `dry-types` to `0.13.0` and `dry-struct`
  to `0.5.0`

## [0.3.2] - 2018-04-13

### Changed

- Moved repository to [huyderman/querylicious][github-repo] and added branding

### Fixed

- Ensure `QueryReducer#to_proc` returns a proper proc

## [0.3.1] - 2018-02-19

### Changed

- Update allowed versions of `dry-matcher` gem

## [0.3.0] - 2017-11-28

### Added

- Add `not_key` reducer alias

### Changed

- Updated required dependency versions

## [0.2.0] - 2017-08-15

### Added

- Add support for lists (arrays)

### Changed

- Change `type` in the reducer matchers from classes to dry-types

### Fixed

- Support empty queries

## [0.1.0] - 2017-08-14

### Added

- Initial implementation of querylicious, with query-parser and query-reducer

[github-repo]: https://github.com/huyderman/querylicious

[Unreleased]: https://github.com/huyderman/querylicious/compare/v0.4.0...HEAD
[0.4.0]: https://github.com/huyderman/querylicious/compare/v0.3.2...v0.4.0
[0.3.2]: https://github.com/huyderman/querylicious/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/huyderman/querylicious/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/huyderman/querylicious/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/huyderman/querylicious/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/huyderman/querylicious/compare/v0.0.0...v0.1.0
