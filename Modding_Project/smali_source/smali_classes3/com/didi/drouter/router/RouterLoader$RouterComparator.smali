.class Lcom/didi/drouter/router/RouterLoader$RouterComparator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/drouter/router/RouterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/didi/drouter/store/RouterMeta;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/didi/drouter/router/RouterLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/didi/drouter/router/RouterLoader$RouterComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/store/RouterMeta;)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwww()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwww()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    return p1

    .line 26
    :cond_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwww()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwww()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/didi/drouter/store/RouterMeta;

    .line 2
    .line 3
    check-cast p2, Lcom/didi/drouter/store/RouterMeta;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/didi/drouter/router/RouterLoader$RouterComparator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/store/RouterMeta;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
