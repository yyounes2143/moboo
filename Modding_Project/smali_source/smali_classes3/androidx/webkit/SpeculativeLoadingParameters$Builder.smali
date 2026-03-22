.class public final Landroidx/webkit/SpeculativeLoadingParameters$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/SpeculativeLoadingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAdditionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

.field private mIsJavaScriptEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mIsJavaScriptEnabled:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public addAdditionalHeader(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 1
    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addAdditionalHeaders(Ljava/util/Map;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 1
    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/SpeculativeLoadingParameters$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Landroidx/webkit/SpeculativeLoadingParameters;
    .locals 5
    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .line 1
    new-instance v0, Landroidx/webkit/SpeculativeLoadingParameters;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mIsJavaScriptEnabled:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/SpeculativeLoadingParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLandroidx/webkit/SpeculativeLoadingParameters$1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public setExpectedNoVarySearchData(Landroidx/webkit/NoVarySearchHeader;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 0
    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public setJavaScriptEnabled(Z)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 0
    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mIsJavaScriptEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
