.class public final Lcom/facebook/ads/redexgen/X/I1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c4;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/c2;Z)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dL;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39758
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/dL;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/I1;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9k(Ljava/lang/String;)V
    .locals 2

    .line 39759
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I1;->A00:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I1;->A01:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/c4;->A06(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Ljava/lang/String;)V

    .line 39760
    return-void
.end method
