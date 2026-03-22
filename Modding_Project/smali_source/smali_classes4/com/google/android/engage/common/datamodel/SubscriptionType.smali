.class public interface abstract annotation Lcom/google/android/engage/common/datamodel/SubscriptionType;
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
.field public static final SUBSCRIPTION_TYPE_ACTIVE:I = 0x1

.field public static final SUBSCRIPTION_TYPE_ACTIVE_TRIAL:I = 0x2

.field public static final SUBSCRIPTION_TYPE_INACTIVE:I = 0x3

.field public static final SUBSCRIPTION_TYPE_UNSPECIFIED:I
