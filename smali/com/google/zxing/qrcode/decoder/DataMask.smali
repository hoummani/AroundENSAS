.class abstract enum Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Enum;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/qrcode/decoder/DataMask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_000:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_001:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_010:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_011:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_100:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_101:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_110:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_111:Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$1;

    const-string v1, "DATA_MASK_000"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_000:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 49
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$2;

    const-string v1, "DATA_MASK_001"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/qrcode/decoder/DataMask$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_001:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 59
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$3;

    const-string v1, "DATA_MASK_010"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_010:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 69
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$4;

    const-string v1, "DATA_MASK_011"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/qrcode/decoder/DataMask$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_011:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 79
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$5;

    const-string v1, "DATA_MASK_100"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/qrcode/decoder/DataMask$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_100:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 90
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$6;

    const-string v1, "DATA_MASK_101"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_101:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 101
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$7;

    const-string v1, "DATA_MASK_110"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_110:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 112
    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$8;

    const-string v1, "DATA_MASK_111"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_111:Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_000:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_001:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_010:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_011:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_100:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_101:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_110:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASK_111:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->$VALUES:[Lcom/google/zxing/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/zxing/qrcode/decoder/DataMask$1;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->$VALUES:[Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/DataMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object v0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
    .locals 3
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimension"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 131
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p1, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "j":I
    :cond_2
    return-void
.end method
