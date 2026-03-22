.class public final Lcom/facebook/ads/redexgen/X/NU;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/TF;

.field public final A02:Ljava/lang/String;

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;J)V
    .locals 0

    .line 54187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54188
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Lorg/json/JSONObject;

    .line 54189
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NU;->A01:Lcom/facebook/ads/redexgen/X/TF;

    .line 54190
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Ljava/lang/String;

    .line 54191
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/NU;->A00:J

    .line 54192
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 54193
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/TF;
    .locals 1

    .line 54194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A01:Lcom/facebook/ads/redexgen/X/TF;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 54195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 54196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Lorg/json/JSONObject;

    return-object v0
.end method
