.class public Lcom/facebook/ads/redexgen/X/4z;
.super Ljava/io/IOException;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 338
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2Muqh70O6MOkp58pfFL5fqQgJ22LbaOG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jD6cmMLG7Gavhvnx7CsfZCp0TtnTBkr3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DkdpbG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GPGghQKRhEx8Hs8G8MSTaC4gxGmWiueB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QluhzvyI33CjLqJI0scNHkzBaYypVFTM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0eVVwOHP6sRTPOkeFOg2FrcrRKf9zLzm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eMagzz7TAm5jMGA4xfPZ9Gt9YCxRiChS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ni0AzA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4z;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 14661
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 14662
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    .line 14663
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 14664
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14665
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    .line 14666
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 14667
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14668
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    .line 14669
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 14670
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 14671
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    .line 14672
    return-void
.end method

.method public static A00(Ljava/io/IOException;)Z
    .locals 4

    .line 14673
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz p0, :cond_3

    .line 14674
    instance-of v3, p0, Lcom/facebook/ads/redexgen/X/4z;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A01:[Ljava/lang/String;

    const-string v1, "gKwk6czfyck41TVkhXYTi4dwxHvcIOpw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "KQxTdd6uLlHWGTHHNKbBjwUH99zdNbRE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 14675
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    .line 14676
    .local v1, "reason":I
    const/16 v0, 0x7d8

    if-ne v1, v0, :cond_2

    .line 14677
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A01:[Ljava/lang/String;

    const-string v1, "s9AyCo5pkNnOJPMRH26C6HS8hSDLq3Tq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "XtuWgVHjqru9RvBQwhBnbYNcJk0iYMoO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 14678
    .end local v1    # "reason":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 14679
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
