.class final Lcom/parse/ParseFieldOperations$2;
.super Ljava/lang/Object;
.source "ParseFieldOperations.java"

# interfaces
.implements Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseFieldOperation;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    .line 79
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v0

    return-object v0
.end method
