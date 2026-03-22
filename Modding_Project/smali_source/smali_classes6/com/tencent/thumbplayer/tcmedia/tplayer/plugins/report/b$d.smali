.class Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/tencent/thumbplayer/tcmedia/common/a/a;)V
    .locals 8

    .line 1
    new-instance p2, Lcom/tencent/thumbplayer/tcmedia/utils/l;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/tencent/thumbplayer/tcmedia/utils/l;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/16 v1, 0x107

    .line 8
    .line 9
    const/16 v2, 0x1e

    .line 10
    .line 11
    if-le p1, v2, :cond_0

    .line 12
    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    move v3, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    :goto_0
    const/16 v4, 0xcd

    .line 19
    .line 20
    if-eq p1, v2, :cond_4

    .line 21
    .line 22
    const/16 v2, 0x32

    .line 23
    .line 24
    const/16 v5, 0xbb8

    .line 25
    .line 26
    if-eq p1, v2, :cond_3

    .line 27
    .line 28
    const/16 v2, 0x96

    .line 29
    .line 30
    if-eq p1, v2, :cond_2

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->f(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->f(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$b;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-wide/32 v6, 0xea60

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->f(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->f(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$b;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    .line 75
    .line 76
    move p1, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move p1, v4

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 80
    .line 81
    invoke-static {v1, p2, p1, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;Lcom/tencent/thumbplayer/tcmedia/common/a/a;IZ)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 85
    .line 86
    invoke-static {v1, p2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;Lcom/tencent/thumbplayer/tcmedia/common/a/a;Z)V

    .line 87
    .line 88
    .line 89
    if-eq p1, v4, :cond_5

    .line 90
    .line 91
    const-string p1, "loadingtime"

    .line 92
    .line 93
    invoke-interface {p2, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "liveExParam.prePlayLengthInt: "

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->g(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;->getLiveExParam()Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->prePlayLengthInt:I

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "TPReportManager"

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$d;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 128
    .line 129
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;Lcom/tencent/thumbplayer/tcmedia/common/a/a;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
