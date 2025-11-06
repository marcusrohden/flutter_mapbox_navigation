# Mapbox Plugin ProGuard Rules
# These rules are automatically applied to apps using this plugin

# Keep all Mapbox classes - critical for module loading and reflection
-keep class com.mapbox.** { *; }
-keep interface com.mapbox.** { *; }
-keep enum com.mapbox.** { *; }

# Keep Mapbox module configuration classes (critical for HTTP client and other modules)
-keep class com.mapbox.module.** { *; }
-keep class * implements com.mapbox.common.HttpServiceInterface { *; }

# Keep all @MapboxModule annotated classes
-keep @com.mapbox.common.MapboxModule class * { *; }

# Keep all attributes for proper reflection
-keepattributes *Annotation*,Signature,InnerClasses,EnclosingMethod,*

# Keep Kotlin metadata
-keep class kotlin.Metadata { *; }

# Suppress warnings for optional Mapbox services
-dontwarn com.mapbox.common.BillingServiceInterface
-dontwarn com.mapbox.common.UploadError
-dontwarn com.mapbox.common.UploadServiceFactory
-dontwarn com.mapbox.common.UploadServiceInterface
-dontwarn com.mapbox.common.UploadState
-dontwarn com.mapbox.common.experimental.DeferredDeliveryRequestOptions
-dontwarn com.mapbox.common.experimental.DeferredDeliveryServiceOptions
-dontwarn com.mapbox.android.core.location.**
-dontwarn com.mapbox.maps.**
