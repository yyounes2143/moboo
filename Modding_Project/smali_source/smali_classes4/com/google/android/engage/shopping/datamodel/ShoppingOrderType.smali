.class public interface abstract annotation Lcom/google/android/engage/shopping/datamodel/ShoppingOrderType;
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
.field public static final TYPE_IN_STORE_PICKUP:I = 0x1

.field public static final TYPE_MULTI_DAY_DELIVERY:I = 0x3

.field public static final TYPE_SAME_DAY_DELIVERY:I = 0x2

.field public static final TYPE_UNKNOWN:I
