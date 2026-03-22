.class public interface abstract annotation Lcom/google/android/engage/travel/datamodel/TransportationType;
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
.field public static final TYPE_BUS:I = 0x3

.field public static final TYPE_FERRY:I = 0x4

.field public static final TYPE_FLIGHT:I = 0x1

.field public static final TYPE_TRAIN:I = 0x2

.field public static final TYPE_UNKNOWN:I
