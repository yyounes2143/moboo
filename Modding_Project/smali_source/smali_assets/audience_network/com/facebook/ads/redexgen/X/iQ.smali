.class public final Lcom/facebook/ads/redexgen/X/iQ;
.super Lcom/facebook/ads/redexgen/X/MS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7K;->AAk(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/MX;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MX;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7K;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2973
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bMkIe4HHzeEAIK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wvvk6JXeoGYrQUt6QbLdYhjQYYfi53dR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vUaO3wypQXV6NlpG4vA9ecCDTWnzdNvx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "btTnQ58GcbMs0xrA6ag"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uPcaf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "63yRelZMLNO9Px2VKweOh9y3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uSQS7xV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6B8EZAVNEh4nIf7eFA6RS1UfCbAYEEi0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iQ;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7K;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/MX;)V
    .locals 0

    .line 86284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iQ;->A01:Lcom/facebook/ads/redexgen/X/7K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iQ;->A02:Lcom/facebook/ads/redexgen/X/6M;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/MX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MS;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 86285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iQ;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/MX;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4J(Z)V

    .line 86286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/MX;

    if-eqz v0, :cond_0

    .line 86287
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iQ;->A00:Lcom/facebook/ads/redexgen/X/MX;

    sget-object v2, Lcom/facebook/ads/redexgen/X/iQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/iQ;->A03:[Ljava/lang/String;

    const-string v1, "cKnhjiPIAYzu4sHLc7xY44MJ7ERYjZpV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "VDOCXXkozOxHXBfHSThQ3rlqz7gvm39S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iQ;->A01:Lcom/facebook/ads/redexgen/X/7K;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/MX;->ACd(Lcom/facebook/ads/redexgen/X/id;)V

    .line 86288
    :cond_0
    return-void

    .line 86289
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
