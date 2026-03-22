.class public interface abstract annotation Lcom/google/android/engage/video/datamodel/WatchNextType;
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
.field public static final TYPE_CONTINUE:I = 0x1

.field public static final TYPE_NEW:I = 0x3

.field public static final TYPE_NEXT:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WATCHLIST:I = 0x4
