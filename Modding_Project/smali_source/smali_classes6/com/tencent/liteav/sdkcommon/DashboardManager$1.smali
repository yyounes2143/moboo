.class final Lcom/tencent/liteav/sdkcommon/DashboardManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/sdkcommon/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdkcommon/DashboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/sdkcommon/DashboardManager;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/sdkcommon/DashboardManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$000(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gt v0, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$000(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$102(Lcom/tencent/liteav/sdkcommon/DashboardManager;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$000(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$100(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$300(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Lcom/tencent/liteav/sdkcommon/g;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$200(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$100(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/sdkcommon/g;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$400(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$100(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$300(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Lcom/tencent/liteav/sdkcommon/g;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/sdkcommon/g;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/sdkcommon/DashboardManager$1;->a:Lcom/tencent/liteav/sdkcommon/DashboardManager;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/tencent/liteav/sdkcommon/DashboardManager;->access$300(Lcom/tencent/liteav/sdkcommon/DashboardManager;)Lcom/tencent/liteav/sdkcommon/g;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v0, ""

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/sdkcommon/g;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
