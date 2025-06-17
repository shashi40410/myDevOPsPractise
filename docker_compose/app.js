const express = require("express");
const { createClient: createRedisClient } = require("redis");

(async function () {
    const app = express();

    const redisClient = createRedisClient({
        url: "redis://redis:6379"  // ✅ Fix here
    });

    await redisClient.connect();

    app.get("/", async (req, res) => {
        const counterValue = await redisClient.get("counter");
        const newCounterValue = (parseInt(counterValue) || 0) + 1;
        await redisClient.set("counter", newCounterValue.toString());
        res.send(`Page loads: ${newCounterValue}`);
    });

    app.listen(80, () => {
        console.log("Server is running on port 80");
    });
})();

