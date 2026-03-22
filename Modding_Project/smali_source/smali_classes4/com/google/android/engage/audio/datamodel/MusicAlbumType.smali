.class public interface abstract annotation Lcom/google/android/engage/audio/datamodel/MusicAlbumType;
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
.field public static final TYPE_ALBUM:I = 0x1

.field public static final TYPE_EP:I = 0x2

.field public static final TYPE_MIXTAPE:I = 0x4

.field public static final TYPE_SINGLE:I = 0x3

.field public static final TYPE_UNKNOWN:I
