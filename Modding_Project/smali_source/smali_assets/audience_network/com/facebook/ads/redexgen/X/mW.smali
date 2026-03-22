.class public final Lcom/facebook/ads/redexgen/X/mW;
.super Lcom/facebook/ads/redexgen/X/4M;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/mV;->A5v(Lcom/facebook/ads/redexgen/X/Be;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4M<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/mV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mV;)V
    .locals 0

    .line 98857
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mW;->A00:Lcom/facebook/ads/redexgen/X/mV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4M;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mW;->A00:Lcom/facebook/ads/redexgen/X/mV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mV;->A00(Lcom/facebook/ads/redexgen/X/mV;)Lcom/facebook/ads/redexgen/X/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M2;->A05()V

    .line 98859
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A01()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98860
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mW;->A00()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 1

    .line 98861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mW;->A00:Lcom/facebook/ads/redexgen/X/mV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mV;->A00(Lcom/facebook/ads/redexgen/X/mV;)Lcom/facebook/ads/redexgen/X/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M2;->A06()V

    .line 98862
    return-void
.end method
