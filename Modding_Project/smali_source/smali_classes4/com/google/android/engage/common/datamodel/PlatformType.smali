.class public interface abstract annotation Lcom/google/android/engage/common/datamodel/PlatformType;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_ANDROID_MOBILE:I = 0x2

.field public static final TYPE_ANDROID_TV:I = 0x1

.field public static final TYPE_IOS:I = 0x3

.field public static final TYPE_UNSPECIFIED:I
