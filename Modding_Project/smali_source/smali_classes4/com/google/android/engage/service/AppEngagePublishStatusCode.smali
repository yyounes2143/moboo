.class public interface abstract annotation Lcom/google/android/engage/service/AppEngagePublishStatusCode;
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
.field public static final NOT_PUBLISHED_CLIENT_ERROR:I = 0x7

.field public static final NOT_PUBLISHED_FEATURE_DISABLED_BY_CLIENT:I = 0x9

.field public static final NOT_PUBLISHED_INELIGIBLE_LOCATION:I = 0x3

.field public static final NOT_PUBLISHED_NO_ELIGIBLE_CONTENT:I = 0x6

.field public static final NOT_PUBLISHED_OTHER:I = 0x4

.field public static final NOT_PUBLISHED_REQUIRES_SIGN_IN:I = 0x1

.field public static final NOT_PUBLISHED_REQUIRES_SUBSCRIPTION:I = 0x2

.field public static final NOT_PUBLISHED_REQUIRES_USER_PERMISSION:I = 0x5

.field public static final NOT_PUBLISHED_SERVICE_ERROR:I = 0x8

.field public static final PUBLISHED:I
