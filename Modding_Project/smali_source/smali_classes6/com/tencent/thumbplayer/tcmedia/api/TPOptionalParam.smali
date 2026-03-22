.class public Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;
    }
.end annotation


# static fields
.field public static final TP_OPTIONAL_PARAM_TYPE_BOOLEAN:I = 0x1

.field public static final TP_OPTIONAL_PARAM_TYPE_FLOAT:I = 0x6

.field public static final TP_OPTIONAL_PARAM_TYPE_LONG:I = 0x2

.field public static final TP_OPTIONAL_PARAM_TYPE_OBJECT:I = 0x7

.field public static final TP_OPTIONAL_PARAM_TYPE_QUEUE_INT:I = 0x4

.field public static final TP_OPTIONAL_PARAM_TYPE_QUEUE_STRING:I = 0x5

.field public static final TP_OPTIONAL_PARAM_TYPE_STRING:I = 0x3

.field public static final TP_OPTIONAL_PARAM_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private key:I
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
    .end annotation
.end field

.field private paramBoolean:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

.field private paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

.field private paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

.field private paramObject:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

.field private paramQueueInt:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;

.field private paramQueueString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;

.field private paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

.field private paramType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public buildBoolean(IZ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 5
    .line 6
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramBoolean:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    .line 12
    .line 13
    iput-boolean p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    .line 14
    .line 15
    return-object p0
.end method

.method public buildFloat(IF)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    iput p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->value:F

    return-object p0
.end method

.method public buildFloat(IFFF)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    iput p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->value:F

    iput p3, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->param1:F

    iput p4, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->param2:F

    return-object p0
.end method

.method public buildLong(IJ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    iput-wide p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    return-object p0
.end method

.method public buildLong(IJJJ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    iput-wide p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    iput-wide p4, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->param1:J

    iput-wide p6, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->param2:J

    return-object p0
.end method

.method public buildObject(ILjava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 5
    .line 6
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramObject:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    .line 12
    .line 13
    iput-object p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0
.end method

.method public buildQueueInt(I[I)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 5
    .line 6
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramQueueInt:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;

    .line 12
    .line 13
    iput-object p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;->queueValue:[I

    .line 14
    .line 15
    return-object p0
.end method

.method public buildQueueString(I[Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 5
    .line 6
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramQueueString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;

    .line 12
    .line 13
    iput-object p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;->queueValue:[Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method

.method public buildString(ILjava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    iput-object p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->value:Ljava/lang/String;

    return-object p0
.end method

.method public buildString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    iput-object p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->value:Ljava/lang/String;

    iput-object p3, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->param1:Ljava/lang/String;

    iput-object p4, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->param2:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()I
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPOptionalId;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 2
    .line 3
    return v0
.end method

.method public getParamBoolean()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramBoolean:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamFloat()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamObject()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramObject:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamQueueInt()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramQueueInt:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamQueueString()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramQueueString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamString()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramType:I

    .line 7
    .line 8
    const-string v2, "type:long, key:"

    .line 9
    .line 10
    const-string v3, ", "

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, ", param2:"

    .line 14
    .line 15
    const-string v6, ", param1:"

    .line 16
    .line 17
    const-string v7, ", value:"

    .line 18
    .line 19
    const-string v8, ", \nname:"

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    const-string v1, "type:unknown"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :pswitch_0
    const-string v1, "type:object, key:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 45
    .line 46
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramObject:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :pswitch_1
    const-string v1, "type:float, key:"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 79
    .line 80
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    .line 91
    .line 92
    iget v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->value:F

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    .line 101
    .line 102
    iget v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->param1:F

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramFloat:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;

    .line 111
    .line 112
    iget v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamFloat;->param2:F

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :pswitch_2
    const-string v1, "type:quint_string, key:"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 133
    .line 134
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramQueueString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueString;->queueValue:[Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v1, :cond_0

    .line 149
    .line 150
    array-length v2, v1

    .line 151
    :goto_1
    if-ge v4, v2, :cond_0

    .line 152
    .line 153
    aget-object v5, v1, v4

    .line 154
    .line 155
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_3
    const-string v1, "type:quint_int, key:"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 178
    .line 179
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramQueueInt:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;->queueValue:[I

    .line 192
    .line 193
    if-eqz v1, :cond_0

    .line 194
    .line 195
    array-length v2, v1

    .line 196
    :goto_2
    if-ge v4, v2, :cond_0

    .line 197
    .line 198
    aget v5, v1, v4

    .line 199
    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    add-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :pswitch_4
    const-string v1, "type:string, key:"

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 223
    .line 224
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->value:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    .line 245
    .line 246
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->param1:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramString:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;

    .line 255
    .line 256
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamString;->param2:Ljava/lang/String;

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :pswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 272
    .line 273
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 284
    .line 285
    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    .line 286
    .line 287
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 294
    .line 295
    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->param1:J

    .line 296
    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramLong:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 304
    .line 305
    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->param2:J

    .line 306
    .line 307
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :pswitch_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->key:I

    .line 323
    .line 324
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->getOptionalIdName(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->paramBoolean:Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    .line 335
    .line 336
    iget-boolean v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    :cond_0
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    return-object v0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
