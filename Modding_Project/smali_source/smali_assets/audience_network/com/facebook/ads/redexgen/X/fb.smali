.class public final Lcom/facebook/ads/redexgen/X/fb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdCacheListenerImpl"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iN;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/fa;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2756
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XqTxzibSN1zAjaiM9LtVSqsxSG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xqN5bEwB0Nihon7KSuA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MJLgHxMJm3Fw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "m77T1m6dtAhGTcgbhkAg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fb;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fa;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iN;",
            ">;)V"
        }
    .end annotation

    .line 81041
    .local p2, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81042
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fb;->A00:Ljava/util/List;

    .line 81043
    return-void
.end method

.method private A00()V
    .locals 11

    .line 81044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RO;->A05(Z)V

    .line 81045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RO;->A02()V

    .line 81046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RO;->A03(I)V

    .line 81047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/fb;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/fb;->A02:[Ljava/lang/String;

    const-string v1, "GKxyFdZ7ADxfGJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/iN;

    .line 81048
    .local v1, "nativeAdapter":Lcom/facebook/ads/redexgen/X/iN;
    new-instance v5, Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    .line 81049
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A01(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v6

    .line 81050
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A0K()Lcom/facebook/ads/redexgen/X/S3;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    .line 81051
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RO;->A01()Lcom/facebook/ads/redexgen/X/hK;

    move-result-object v10

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Qc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/iN;Lcom/facebook/ads/redexgen/X/TF;Lcom/facebook/ads/redexgen/X/Uo;Lcom/facebook/ads/redexgen/X/hK;)V

    .line 81052
    .local v2, "nativeAdBaseApi":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A0z()Lcom/facebook/ads/redexgen/X/iN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81053
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A0z()Lcom/facebook/ads/redexgen/X/iN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iN;->A0F()Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81054
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qc;->A0z()Lcom/facebook/ads/redexgen/X/iN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iN;->A0F()Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hL;

    .line 81055
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/hL;->A00(Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 81056
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A01(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/RO;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 81057
    .end local v1    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/iN;
    .end local v2    # "nativeAdBaseApi":Lcom/facebook/ads/redexgen/X/Qc;
    goto :goto_0

    .line 81058
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/fc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fc;-><init>(Lcom/facebook/ads/redexgen/X/fb;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vg;)V

    .line 81059
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final ACh()V
    .locals 0

    .line 81060
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A00()V

    .line 81061
    return-void
.end method

.method public final ACq()V
    .locals 0

    .line 81062
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A00()V

    .line 81063
    return-void
.end method
