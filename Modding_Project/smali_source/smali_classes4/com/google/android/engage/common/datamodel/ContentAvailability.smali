.class public interface abstract annotation Lcom/google/android/engage/common/datamodel/ContentAvailability;
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
.field public static final AVAILABILITY_AVAILABLE:I = 0x1

.field public static final AVAILABILITY_FREE_WITH_SUBSCRIPTION:I = 0x2

.field public static final AVAILABILITY_PAID_CONTENT:I = 0x3

.field public static final AVAILABILITY_UNKNOWN:I
