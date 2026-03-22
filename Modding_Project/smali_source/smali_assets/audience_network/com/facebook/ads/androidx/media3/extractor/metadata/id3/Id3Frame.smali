.class public abstract Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 95633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95634
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    .line 95635
    return-void
.end method


# virtual methods
.method public final synthetic A9S()[B
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2c;->A01(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A9T()Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2c;->A00(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 95636
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95637
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    return-object v0
.end method
