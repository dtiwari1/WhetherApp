//
//  Constants+Keys.swift
//  NearbyWeather
//
//  Created by Erik Maximilian Martens on 28.01.20.
//  Copyright © 2020 Erik Maximilian Martens. All rights reserved.
//

import Foundation

extension Constants {
  enum Keys {}
}

extension Constants.Keys {
  
  enum UserDefaults {
    static let kNearbyWeatherApiKeyKey = "1f19fb3bb573e9fc2e539f474fa37e25"
    static let kIsInitialLaunch = "nearby_weather.isInitialLaunch"
    static let kRefreshOnAppStartKey = "de.erikmaximilianmartens.nearbyWeather.refreshOnAppStart"
    static let kWeatherDataLastRefreshDateKey = "de.erikmaximilianmartens.nearbyWeather.weatherDataService.lastUpdateDate"
    static let kIsTemperatureOnAppIconEnabledKey = "de.erikmaximilianmartens.nearbyWeather.isTemperatureOnAppIconEnabled"
  }
}

extension Constants.Keys {
  
  enum NotificationCenter {
    static let kWeatherServiceDidUpdate = "de.erikmaximilianmartens.nearbyWeather.weatherServiceDidUpdate"
    static let kLocationAuthorizationUpdated = "de.erikmaximilianmartens.nearbyWeather.locationAuthorizationUpdated"
    static let kNetworkReachabilityChanged = "de.erikmaximilianmartens.nearbyWeather.networkReachabilityChanged"
    static let kSortingOrientationPreferenceChanged = "de.erikmaximilianmartens.nearbyWeather.sortingOrientationPreferenceChanged"
  }
}

extension Constants.Keys {
  
  enum NotificationIdentifiers {
    static let kAppIconTemeperatureNotification = "AppIconTemeperatureNotification"
  }
}

extension Constants.Keys {
  
  enum KeyValueBindings {
    static let kImage = "image"
    static let kChecked = "checked"
  }
}

extension Constants.Keys {
  
  enum Storage {
    static let kWeatherDataManagerStoredContentsFileName = "WeatherDataManagerStoredContents"
    static let kPreferencesManagerStoredContentsFileName = "PreferencesManagerStoredContents"
  }
}

extension Constants.Keys {
  
  enum MapAnnotation {
    static let kMapAnnotationViewIdentifier = "de.erikmaximilianmartens.nearbyWeather.WeatherLocationMapAnnotationView"
  }
}

extension Constants.Keys {
  
  enum AppCoordinator {
    static let kStep = "de.erikmaximilianmartens.nearbyWeather.step"
  }
}
