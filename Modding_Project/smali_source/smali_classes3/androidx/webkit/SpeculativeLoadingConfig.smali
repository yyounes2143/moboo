.class public Landroidx/webkit/SpeculativeLoadingConfig;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    }
.end annotation


# instance fields
.field private final mMaxPrefetches:I

.field private final mMaxPrerenders:I

.field private final mPrefetchTTLSeconds:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mPrefetchTTLSeconds:I

    .line 4
    iput p2, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrefetches:I

    .line 5
    iput p3, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrerenders:I

    return-void
.end method

.method public synthetic constructor <init>(IIILandroidx/webkit/SpeculativeLoadingConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/SpeculativeLoadingConfig;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getMaxPrefetches()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .line 1
    iget v0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrefetches:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxPrerenders()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrerenders:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrefetchTtlSeconds()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .line 1
    iget v0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mPrefetchTTLSeconds:I

    .line 2
    .line 3
    return v0
.end method
