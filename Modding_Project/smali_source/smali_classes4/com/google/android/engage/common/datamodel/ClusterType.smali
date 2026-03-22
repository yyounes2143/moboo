.class public interface abstract annotation Lcom/google/android/engage/common/datamodel/ClusterType;
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
.field public static final TYPE_CONTINUATION:I = 0x3

.field public static final TYPE_CONTINUE_SEARCH:I = 0xd

.field public static final TYPE_ENGAGEMENT:I = 0x8

.field public static final TYPE_FEATURED:I = 0x2

.field public static final TYPE_FOOD_REORDER:I = 0x5

.field public static final TYPE_FOOD_SHOPPING_CART:I = 0x6

.field public static final TYPE_FOOD_SHOPPING_LIST:I = 0x7

.field public static final TYPE_RECOMMENDATION:I = 0x1

.field public static final TYPE_RESERVATION:I = 0xe

.field public static final TYPE_SHOPPING_CART:I = 0x4

.field public static final TYPE_SHOPPING_LIST:I = 0x9

.field public static final TYPE_SHOPPING_ORDER_TRACKING:I = 0xb

.field public static final TYPE_SHOPPING_REORDER:I = 0xa

.field public static final TYPE_SUBSCRIPTION:I = 0xc

.field public static final TYPE_UNKNOWN:I
