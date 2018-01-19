/*
 * Copyright (c) Ripple Foundation CIC Ltd, UK, 2017
 * Author: Christian Chevalley
 * This file is part of Project Ethercis
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.ethercis.ehr.encode.wrappers.json.writer.translator_db2raw;

import com.ethercis.ehr.encode.wrappers.SnakeCase;

/**
 * Created by christian on 6/22/2017.
 */
public class RawJsonArchetypeNodeId {

    String originalKey;

    public RawJsonArchetypeNodeId(String originalKey) {
        this.originalKey = originalKey;
    }

    public String toString() {
        String key = originalKey;
        //strip the [...] node predicate
        if (key.contains("[")) {
            key = key.substring(key.indexOf("[")+1, key.indexOf("]"));
        }
        return new SnakeCase(key).camelToSnake();
    }
}
