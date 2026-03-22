.class public Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;
.super Ljava/lang/Object;


# instance fields
.field private mBinding:[Ljava/lang/String;

.field private mFeatureType:Ljava/lang/String;

.field private mIsSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mBinding:[Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mIsSelected:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getBinding()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mBinding:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFeatureType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mFeatureType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mIsSelected:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBinding([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mBinding:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFeatureType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mFeatureType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;->mIsSelected:Z

    .line 2
    .line 3
    return-void
.end method
