.class Lcom/didi/drouter/service/ServiceAgent$ServiceComparator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/drouter/service/ServiceAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceComparator"
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

.method public synthetic constructor <init>(Lcom/didi/drouter/service/ServiceAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/didi/drouter/service/ServiceAgent$ServiceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/store/RouterMeta;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sub-int/2addr p2, p1

    .line 10
    return p2
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
    invoke-virtual {p0, p1, p2}, Lcom/didi/drouter/service/ServiceAgent$ServiceComparator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/store/RouterMeta;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
