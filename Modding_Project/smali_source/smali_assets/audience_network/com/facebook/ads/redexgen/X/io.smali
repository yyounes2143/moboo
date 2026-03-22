.class public final Lcom/facebook/ads/redexgen/X/io;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ML;->A01(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/io;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dL;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/io;->A00:Lcom/facebook/ads/redexgen/X/dL;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7G()Ljava/lang/String;
    .locals 1

    .line 86680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A7h()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A00:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A03(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A8C()Lcom/facebook/ads/redexgen/X/MJ;
    .locals 1

    .line 86682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ML;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/MJ;

    move-result-object v0

    return-object v0
.end method
