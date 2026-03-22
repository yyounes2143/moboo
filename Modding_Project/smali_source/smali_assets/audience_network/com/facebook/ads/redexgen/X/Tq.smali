.class public final Lcom/facebook/ads/redexgen/X/Tq;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TD;->A02()Lcom/facebook/ads/redexgen/X/Tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TD;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1844
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hExgTQdw1kv5p4SGmSicbF82985LCpum"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OSM8v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iL8QA6bjiVhv7y8TzYON6pF30CxXc7Eu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LpLF7ms2E8gIcrW5L7jBJg3HcpVfC8m9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nyKyIbOxza05szDl5mK4c2SMRynlWefb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BGGrZQbo3jXV4aVW1zlLDKwbTLCVQORY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wI7v5HbNskmPwObzpny5FWr5GhKQDnFZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gz5SetHbJQqiE2gsx67H3auEs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TD;)V
    .locals 0

    .line 66347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 66348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A04(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/64;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66349
    return-void

    .line 66350
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tq;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A01:[Ljava/lang/String;

    const-string v1, "oRBMgw8vkLwlbJMhgBKrYszA0eyE8H4t"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/TD;->A04(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0a()V

    .line 66351
    return-void
.end method

.method public final A03()V
    .locals 4

    .line 66352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A04(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/64;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66353
    return-void

    .line 66354
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A0L(Lcom/facebook/ads/redexgen/X/TD;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A0M(Lcom/facebook/ads/redexgen/X/TD;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tq;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tq;->A01:[Ljava/lang/String;

    const-string v1, "C0qKRDQoQScpUymuNxw7FdDIXXvcdKLa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/TD;->A0N(Lcom/facebook/ads/redexgen/X/TD;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66355
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TD;->A0H(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/redexgen/X/db;)V

    .line 66356
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/TD;->A0P(Lcom/facebook/ads/redexgen/X/TD;Z)Z

    .line 66357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/TD;->A0O(Lcom/facebook/ads/redexgen/X/TD;Z)Z

    .line 66358
    return-void
.end method
