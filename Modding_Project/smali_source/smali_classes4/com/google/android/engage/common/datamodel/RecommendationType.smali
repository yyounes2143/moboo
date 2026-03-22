.class public interface abstract annotation Lcom/google/android/engage/common/datamodel/RecommendationType;
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
.field public static final FROM_USER_WATCHLIST:I = 0x7

.field public static final GENERIC:I = 0x9

.field public static final NEW_ON_PARTNER:I = 0x3

.field public static final POPULAR_ON_PARTNER:I = 0x2

.field public static final RECOMMENDED_FOR_USER:I = 0x5

.field public static final TOP_ON_PARTNER:I = 0x1

.field public static final USER_LIKED_TITLE:I = 0x8

.field public static final WATCHED_SIMILAR_TITLES:I = 0x4

.field public static final WATCH_AGAIN:I = 0x6
