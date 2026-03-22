.class public abstract Lcom/facebook/ads/redexgen/X/7h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kN;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/0t;,
        Lcom/facebook/ads/redexgen/X/0s;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/0t;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/0t;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/7i;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/0t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 438
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "A1ZwXb6JdBVxSPYV1ZzpyUVQy2gRfJA9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vkvPFBYHwcZnb4NzphHjmgFJFbjiYwSo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W7sj7Up3ABI8RZFTAAZOEHe7srfTkl57"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fls3PiASqtk6GqNgTZFqwBZFoYeyHn2V"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1yDmXHBn42mad7W8CPx8A7RWKYn1BqT7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CjPJSc8sfbO2R56Y3Yx9Z137FYjSqvlb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2KSypf5DjPiLYF3nQ7brfSsHONTUzR5A"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k5ePLg8NJJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 22146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22147
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A03:Ljava/util/ArrayDeque;

    .line 22148
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v0, 0xa

    if-ge v3, v0, :cond_0

    .line 22149
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7h;->A03:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/0t;-><init>(Lcom/facebook/ads/redexgen/X/JF;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22151
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    .line 22152
    const/4 v3, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1

    .line 22153
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/facebook/ads/redexgen/X/kL;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/kL;-><init>(Lcom/facebook/ads/redexgen/X/7h;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/0s;-><init>(Lcom/facebook/ads/redexgen/X/5S;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22155
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    .line 22156
    return-void
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/0t;)V
    .locals 1

    .line 22157
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 22158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22159
    return-void
.end method


# virtual methods
.method public final A0V()J
    .locals 2

    .line 22160
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A00:J

    return-wide v0
.end method

.method public A0W()Lcom/facebook/ads/redexgen/X/7j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 22161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 22162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22163
    const/4 v0, 0x0

    return-object v0

    .line 22164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 22165
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0t;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    .line 22166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    return-object v0
.end method

.method public A0X()Lcom/facebook/ads/redexgen/X/7i;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 22167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 22168
    return-object v5

    .line 22169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const-string v1, "DOprmnWJZ9SCRw8WSrP7EOY5DTOSvJmV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    .line 22170
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const-string v1, "urX0HrInINzEpwrp6LaPdmgGjQDQJQna"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/0t;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0t;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/7h;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_7

    .line 22171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/0t;

    .line 22172
    .local v0, "inputBuffer":Lcom/facebook/ads/redexgen/X/0t;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/7i;

    .line 22174
    .local v1, "outputBuffer":Lcom/facebook/ads/redexgen/X/7i;
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/5I;->A00(I)V

    .line 22175
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7h;->A0U(Lcom/facebook/ads/redexgen/X/0t;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 22176
    return-object v4

    .line 22177
    .end local v1    # "outputBuffer":Lcom/facebook/ads/redexgen/X/7i;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7h;->A0b(Lcom/facebook/ads/redexgen/X/7j;)V

    .line 22178
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7h;->A0d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22179
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7h;->A0Z()Lcom/facebook/ads/redexgen/X/kI;

    move-result-object v7

    .line 22180
    .local v1, "subtitle":Lcom/facebook/ads/redexgen/X/J7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/7i;

    .line 22181
    .local v2, "outputBuffer":Lcom/facebook/ads/redexgen/X/7i;
    iget-wide v5, v3, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    const-wide v8, 0x7fffffffffffffffL

    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22182
    .end local v1    # "subtitle":Lcom/facebook/ads/redexgen/X/J7;
    .end local v2    # "outputBuffer":Lcom/facebook/ads/redexgen/X/7i;
    :cond_4
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7h;->A0U(Lcom/facebook/ads/redexgen/X/0t;)V

    .line 22183
    .end local v0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/0t;
    goto/16 :goto_0

    .line 22184
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const-string v1, "oxl05cpa7UEpdlHPP7s3uyaLsYMYJfaH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "7KvbtL7fQFgbKwZtHueu0Zl9fYEN12Vy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v4

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const-string v1, "oIgvRTusAdocLQHm4RFtRlwv19XF7U3W"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7i;->A0C(JLcom/facebook/ads/redexgen/X/J7;J)V

    .line 22185
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7h;->A0U(Lcom/facebook/ads/redexgen/X/0t;)V

    .line 22186
    return-object v4

    .line 22187
    :cond_7
    return-object v5
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/7i;
    .locals 1

    .line 22188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7i;

    return-object v0
.end method

.method public abstract A0Z()Lcom/facebook/ads/redexgen/X/kI;
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/7j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 22189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 22190
    check-cast p1, Lcom/facebook/ads/redexgen/X/0t;

    .line 22191
    .local v0, "ceaInputBuffer":Lcom/facebook/ads/redexgen/X/0t;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5I;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22192
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7h;->A0U(Lcom/facebook/ads/redexgen/X/0t;)V

    .line 22193
    :goto_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22194
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7h;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A01:J

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/0t;->A01(Lcom/facebook/ads/redexgen/X/0t;J)J

    .line 22195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7h;->A06:[Ljava/lang/String;

    const-string v1, "rj1eyhsOe6SuoM1rYy40tvsoNCkJE80J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ibYLffFAaVDMN4cD1vowu1tbJEM8Lkom"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    .line 22197
    return-void
.end method

.method public abstract A0b(Lcom/facebook/ads/redexgen/X/7j;)V
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/7i;)V
    .locals 1

    .line 22198
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7i;->A0A()V

    .line 22199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22200
    return-void
.end method

.method public abstract A0d()Z
.end method

.method public final bridge synthetic A5j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 22201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7h;->A0W()Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic A5l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 22202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7h;->A0X()Lcom/facebook/ads/redexgen/X/7i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AGZ(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 22203
    check-cast p1, Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7h;->A0a(Lcom/facebook/ads/redexgen/X/7j;)V

    return-void
.end method

.method public AGr()V
    .locals 0

    .line 22204
    return-void
.end method

.method public AIx(J)V
    .locals 0

    .line 22205
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/7h;->A00:J

    .line 22206
    return-void
.end method

.method public flush()V
    .locals 2

    .line 22207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A01:J

    .line 22208
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A00:J

    .line 22209
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7h;->A0U(Lcom/facebook/ads/redexgen/X/0t;)V

    goto :goto_0

    .line 22211
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    if-eqz v0, :cond_1

    .line 22212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7h;->A0U(Lcom/facebook/ads/redexgen/X/0t;)V

    .line 22213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7h;->A02:Lcom/facebook/ads/redexgen/X/0t;

    .line 22214
    :cond_1
    return-void
.end method
